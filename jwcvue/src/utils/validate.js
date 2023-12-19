/**
 * Created by PanJiaChen on 16/11/18.
 */

/**
 * @param {string} path
 * @returns {Boolean}
 */
export function isExternal(path) {
  return /^(https?:|mailto:|tel:)/.test(path)
}

/**
 * @param {string} str
 * @returns {Boolean}
 */
export function validUsername(str) {
  // const valid_map = ['Qing', 'editor', 'admin']//可自由添加正确的用户名
  // return valid_map.indexOf(str.trim()) >= 0
  return str.trim().length;
}
