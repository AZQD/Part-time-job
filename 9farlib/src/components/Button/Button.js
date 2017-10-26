import React, { Component } from 'react';
import { string, bool, object, node, func } from 'prop-types';
import styles from './Button.css';

/* ==========================================================================
<Button />
- Generic button Component

- Usage example:
<Button modifier="primary">Push Me</Button>
========================================================================== */

const propTypes = {
    /** Component theme */
    theme: object,
    /** Content inside button */
    children: node,
    /** Custom classNames besides `${styleDefault}` and `${modifier}` */
    className: string,
    /** HTML Attribute */
    isDisabled: bool,
    /** Add '.is-active' class if true */
    isActive: bool,
    /** Add '.is-loading' class if true */
    isLoading: bool,
    /** Button default class */
    styleDefault: string,
    /** Use "`[styleDefault]--` prefix" to style. ex: 'primary' -> 'button--primary' */
    modifier: string.isRequired,
    /** Applies autoWidth class width auto and proper margins */
    autoWidth: bool,
    /** OnClick click event handling onClick={ () => foo() } */
    onClick: func,
    /**  OnDoubleClick double click event handling onDoulbeClick={ () => foo() } */
    onDoubleClick: func,
    /** OnFocus focus event handling onFocus={ () => foo() } */
    onFocus: func,
    /** OnBlur blur event handling onBlur={ () => foo() } */
    onBlur: func,
    /** Type the HTML type attribute type="submit" or type="reset" */
    type: string,
    /** Name the HTML name attribute name="something" used in forms */
    name: string,
    /** Value, the value attribute typically used in forms value="price" */
    value: string,
    /** data-test attribute for selenium testing */
    dataTest: string,
    /** Inline styles for native button */
    style: object,
};

const defaultProps = {
    styleDefault: 'Button',
    isDisabled: false,
    isActive: false,
    isLoading: false,
    autoWidth: false,
    modifier: '',
    style: {},
};

class Button extends Component {
    getStyleClasses() {
        const { className, styleDefault, modifier, isActive, isLoading, autoWidth, isDisabled, theme } = this.props;
        const styleTheme = theme || styles;
        const styleClassName = className;
        const styleDefaultClass = styleTheme[styleDefault];
        const styleModifier = this.getStyleModifier(modifier, styleTheme);
        const styleActive = this.getStyleActive(isActive, styleTheme);
        const styleLoading = this.getStyleLoading(isLoading, styleTheme);
        const styleAutoWidth = this.getStyleAutoWidth(autoWidth, styleTheme);
        const styleDisabled = this.getStyleDisabled(isDisabled, styleTheme);

        return [styleClassName, styleDefaultClass, styleModifier, styleActive, styleLoading, styleDisabled, styleAutoWidth]
            .filter((a) => a)
            .join(' ');
    }

    getStyleModifier(modifier, theme) {
        return modifier ? theme[`${this.props.styleDefault}--${modifier}`] : '';
    }

    getStyleActive(isActive, theme) {
        return isActive ? theme['is-active'] : '';
    }

    getStyleLoading(isLoading, theme) {
        return isLoading ? theme['is-loading'] : '';
    }

    getStyleDisabled(isDisabled, theme) {
        return isDisabled ? theme['is-disabled'] : '';
    }

    getStyleAutoWidth(autoWidth, theme) {
        return autoWidth ? this.getStyleModifier('autoWidth', theme) : '';
    }

    /*
    GetAttrs function assings the passed props to the button. It is now biding some events and typical attributes
    so they can be set by the parent component
*/
    getAttrs() {
        const attrs = Object.assign({}, {
            onClick: this.props.onClick,
            onDoubleClick: this.props.onDoubleClick,
            onFocus: this.props.onFocus,
            onBlur: this.props.onBlur,
            type: this.props.type,
            name: this.props.name,
            value: this.props.value,
            disabled: !!this.props.isDisabled,
            'data-test': this.props.dataTest,
            style: this.props.style,
        });

        return attrs;
    }

    render() {
        const { children } = this.props;
        const styleClasses = this.getStyleClasses();
        const attrs = this.getAttrs();

        return (
            <button className={ styleClasses } { ...attrs }>
                { children }
            </button>
        );
    }
}

Button.propTypes = propTypes;

Button.defaultProps = defaultProps;

export default Button;
